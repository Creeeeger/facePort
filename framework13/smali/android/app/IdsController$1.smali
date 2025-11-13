.class Landroid/app/IdsController$1;
.super Ljava/lang/Object;
.source "IdsController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/IdsController;->registerLayoutListener(Landroid/view/View;Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/IdsController;


# direct methods
.method constructor blacklist <init>(Landroid/app/IdsController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/IdsController;

    .line 178
    iput-object p1, p0, Landroid/app/IdsController$1;->this$0:Landroid/app/IdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 2

    .line 181
    iget-object v0, p0, Landroid/app/IdsController$1;->this$0:Landroid/app/IdsController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/IdsController;->uiUpdated(I)V

    .line 182
    return-void
.end method
