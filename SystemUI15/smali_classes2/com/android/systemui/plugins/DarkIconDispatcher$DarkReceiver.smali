.class public interface abstract Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x3
.end annotation


# static fields
.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract onDarkChanged(Ljava/util/ArrayList;FI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;FI)V"
        }
    .end annotation
.end method

.method public onDarkChangedWithContrast(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;II)V"
        }
    .end annotation

    return-void
.end method
