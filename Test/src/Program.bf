using System;
using glm;

namespace Test;

class Program
{
	public static int Main(String[] args)
	{
		let a = glm.float4x4.LookAt(.(20, 20, 20), .(0, 0, 0), .(0, 1, 0));

		Console.WriteLine(a.Column0);

		while (true)
		{

		}
	}
}