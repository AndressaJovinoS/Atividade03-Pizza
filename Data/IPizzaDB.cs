﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Data
{
	public interface IPizzaDB
	{
		bool Insert(Pizza pizza);
		List<Pizza> Select();
	}
}
