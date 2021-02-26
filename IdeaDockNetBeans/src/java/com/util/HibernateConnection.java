package com.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

@SuppressWarnings("deprecation")
public class HibernateConnection {

	private static final SessionFactory sessionfactory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {
		
		try {
		
			// Create the SessionFactory from hibernate.cfg.xml
			return new AnnotationConfiguration().configure().buildSessionFactory();
		
		} catch (Throwable ex) {
		
			// Make sure you log the exception, as it might be swallowed
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		
		}

	}

	public static SessionFactory getSessionFactory() {

		return sessionfactory;

	}

	}

