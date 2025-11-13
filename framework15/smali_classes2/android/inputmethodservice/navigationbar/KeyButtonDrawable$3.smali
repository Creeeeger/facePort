.class Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;
.super Ljava/lang/Object;
.source "KeyButtonDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v0, p2, p3, p4}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
