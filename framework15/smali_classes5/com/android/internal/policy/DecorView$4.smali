.class Lcom/android/internal/policy/DecorView$4;
.super Landroid/util/FloatProperty;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/internal/policy/DecorView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/policy/DecorView;)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$mgetContentAlpha(Lcom/android/internal/policy/DecorView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView$4;->get(Lcom/android/internal/policy/DecorView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Lcom/android/internal/policy/DecorView;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/internal/policy/DecorView;->-$$Nest$msetContentAlpha(Lcom/android/internal/policy/DecorView;F)V

    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/DecorView$4;->setValue(Lcom/android/internal/policy/DecorView;F)V

    return-void
.end method
