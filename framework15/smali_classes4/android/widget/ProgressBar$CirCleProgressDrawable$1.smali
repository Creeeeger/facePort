.class Landroid/widget/ProgressBar$CirCleProgressDrawable$1;
.super Landroid/util/IntProperty;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar$CirCleProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/widget/ProgressBar$CirCleProgressDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Ljava/lang/String;)V
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

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;->this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/widget/ProgressBar$CirCleProgressDrawable;)Ljava/lang/Integer;
    .locals 1

    iget v0, p1, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    check-cast p1, Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;->get(Landroid/widget/ProgressBar$CirCleProgressDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/widget/ProgressBar$CirCleProgressDrawable;I)V
    .locals 1

    iput p2, p1, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;->this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-virtual {v0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;I)V
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

    check-cast p1, Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;->setValue(Landroid/widget/ProgressBar$CirCleProgressDrawable;I)V

    return-void
.end method
