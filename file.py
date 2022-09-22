int numero;

def fatorial (int fat) int{
    if (fat > 1) {
        print (fat);
        return fat * fatorial(fat-1);
    }
    else {
        return 1;

    }
}

def resultado (int valor) void {
    print ("Resultado: ", valor);

}

def media (real n1, real n2) real{
    real m;
    m = (n1 + n2)/2;
    return m;

}
def main() {
    print ("Fatorial de N. Digite o número?");
    numero = input();
    resultado (fatorial (numero));

}