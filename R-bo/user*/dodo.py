import pygame,sys
pygame.init()
screen = pygame.display.set_mode((800, 600))
pygame.display.set_caption("Kirby and the forgotten ruby")
pygame_icon = pygame.image.load('./icon.png')
pygame.display.set_icon(pygame_icon)
screen.blit(pygame_icon, (150,100))
pygame.display.flip()
pygame.font.init()
my_font = pygame.font.SysFont('Comic Sans MS', 30)
print("Hello from KIRBY!! NOBODY CARES!! KIRBY KIRBY KIRBY!!!")
status = True
run = True
while run:
    screen.fill((0, 100, 100))
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False