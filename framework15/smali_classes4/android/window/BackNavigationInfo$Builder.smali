.class public Landroid/window/BackNavigationInfo$Builder;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackNavigationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnimationCallback:Z

.field private blacklist mAppProgressGenerationAllowed:Z

.field private blacklist mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

.field private blacklist mLetterboxColor:I

.field private blacklist mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private blacklist mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private blacklist mPrepareRemoteAnimation:Z

.field private blacklist mTouchableRegion:Landroid/graphics/Rect;

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo$Builder;->mAnimationCallback:Z

    iput v0, p0, Landroid/window/BackNavigationInfo$Builder;->mLetterboxColor:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/BackNavigationInfo;
    .locals 12

    new-instance v11, Landroid/window/BackNavigationInfo;

    iget v1, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    iget-object v2, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iget-object v3, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    iget-boolean v4, p0, Landroid/window/BackNavigationInfo$Builder;->mPrepareRemoteAnimation:Z

    iget-boolean v5, p0, Landroid/window/BackNavigationInfo$Builder;->mAnimationCallback:Z

    iget-object v6, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    iget v7, p0, Landroid/window/BackNavigationInfo$Builder;->mLetterboxColor:I

    iget-object v8, p0, Landroid/window/BackNavigationInfo$Builder;->mTouchableRegion:Landroid/graphics/Rect;

    iget-boolean v9, p0, Landroid/window/BackNavigationInfo$Builder;->mAppProgressGenerationAllowed:Z

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/window/BackNavigationInfo;-><init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZLandroid/window/BackNavigationInfo-IA;)V

    return-object v11
.end method

.method public blacklist setAnimationCallback(Z)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/BackNavigationInfo$Builder;->mAnimationCallback:Z

    return-object p0
.end method

.method public blacklist setAppProgressAllowed(Z)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/BackNavigationInfo$Builder;->mAppProgressGenerationAllowed:Z

    return-object p0
.end method

.method public blacklist setCustomAnimation(Ljava/lang/String;III)Landroid/window/BackNavigationInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-direct {v0, p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    :cond_0
    iget-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-static {v0, p3}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->-$$Nest$fputmCustomExitAnim(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-static {v0, p2}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->-$$Nest$fputmCustomEnterAnim(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-static {v0, p4}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->-$$Nest$fputmCustomBackground(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V

    return-object p0
.end method

.method public blacklist setLetterboxColor(I)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/window/BackNavigationInfo$Builder;->mLetterboxColor:I

    return-object p0
.end method

.method public blacklist setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object p0
.end method

.method public blacklist setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method public blacklist setPrepareRemoteAnimation(Z)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/BackNavigationInfo$Builder;->mPrepareRemoteAnimation:Z

    return-object p0
.end method

.method public blacklist setTouchableRegion(Landroid/graphics/Rect;)Landroid/window/BackNavigationInfo$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mTouchableRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setType(I)Landroid/window/BackNavigationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    return-object p0
.end method

.method public blacklist setWindowAnimations(Ljava/lang/String;I)Landroid/window/BackNavigationInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-direct {v0, p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    :cond_0
    iget-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-static {v0, p2}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->-$$Nest$fputmWindowAnimations(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V

    return-object p0
.end method
