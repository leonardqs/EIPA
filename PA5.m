nx = 50;
ny = 50;
% G = zeros(nx*ny, nx*ny);
G = sparse(nx*ny,nx*ny);
% for k = 1:nx*ny
%     G(k,:)=0;
%     G(:,k)=0;
%     G(k,k)=1;
% 
% end



for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
        if irow == 1 || irow == nx || jcolumn == 1 || jcolumn == ny
            G(n,n) = 1;
        else    
           
            nxm = jcolumn+((irow-1)-1)*ny;
            nxp = jcolumn+((irow+1)-1)*ny;
            nym = (jcolumn-1)+(irow-1)*ny;
            nyp = (jcolumn+1)+(irow-1)*ny;
            G(n,n) = -4;
            G(n,nxm) = 1;
            G(n,nxp) = 1;
            G(n,nym) = 1;
            G(n,nyp) = 1;
        end
      
    end
end

Gfull = full(G);

figure(1)
spy(G)

[E,D] = eigs(G,9,'SM');
alphas = diag(E);
% figure(2)
% plot(alphas);
figure(2)

mode = 1;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(331)
surf(V);

mode = 2;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(332)
surf(V);

mode = 3;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(333)
surf(V);

mode = 4;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(334)
surf(V);

mode = 5;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(335)
surf(V);

mode = 6;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(336)
surf(V);

mode = 7;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(337)
surf(V);

mode = 8;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(338)
surf(V);

mode = 9;
Emode = E(:,mode);

for irow = 1: nx
    for jcolumn = 1:ny
         n = jcolumn+(irow-1)*ny;
         V(irow,jcolumn) = Emode(n);    
    end
end
subplot(339)
surf(V);