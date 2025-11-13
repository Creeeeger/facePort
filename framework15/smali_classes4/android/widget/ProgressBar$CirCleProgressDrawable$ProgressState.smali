.class Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar$CirCleProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressState"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;->this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;-><init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;)V

    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;->this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;

    return-object v0
.end method
