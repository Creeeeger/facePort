.class public final synthetic Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    sget v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "injectInputEvent - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyButtonView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mInputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
