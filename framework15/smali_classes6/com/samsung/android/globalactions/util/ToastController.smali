.class public Lcom/samsung/android/globalactions/util/ToastController;
.super Ljava/lang/Object;
.source "ToastController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mInterceptor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ToastController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ToastController;->mInterceptor:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public blacklist setInterceptor(Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ToastController;->mInterceptor:Ljava/util/function/Consumer;

    return-void
.end method

.method public blacklist showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public blacklist showToast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ToastController;->mInterceptor:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ToastController;->mInterceptor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
