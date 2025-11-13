.class Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemAppIconSolution$ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyConstantState"
.end annotation


# instance fields
.field final blacklist mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field final blacklist mPaint:Landroid/graphics/Paint;

.field final blacklist mShadow:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .param p1, "shadow"    # Landroid/graphics/Bitmap;
    .param p2, "childState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1017
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1013
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    .line 1018
    iput-object p1, p0, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    .line 1019
    iput-object p2, p0, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1020
    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .locals 1

    .line 1029
    iget-object v0, p0, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1024
    new-instance v0, Landroid/app/SemAppIconSolution$ShadowDrawable;

    invoke-direct {v0, p0}, Landroid/app/SemAppIconSolution$ShadowDrawable;-><init>(Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;)V

    return-object v0
.end method
