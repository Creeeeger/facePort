.class public final Landroid/service/controls/CustomControl$CustomStatelessBuilder;
.super Ljava/lang/Object;
.source "CustomControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/CustomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomStatelessBuilder"
.end annotation


# instance fields
.field private blacklist mCustomIconAnimationEndFrame:I

.field private blacklist mCustomIconAnimationJson:Ljava/lang/String;

.field private blacklist mCustomIconAnimationJsonCache:Ljava/lang/String;

.field private blacklist mCustomIconAnimationRepeatCount:I

.field private blacklist mCustomIconAnimationStartFrame:I

.field private blacklist mLayoutType:I

.field private blacklist mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mUseCustomIconWithoutPadding:Z

.field private blacklist mUseCustomIconWithoutShadowBg:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mLayoutType:I

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationStartFrame:I

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationEndFrame:I

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationRepeatCount:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/controls/CustomControl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mLayoutType:I

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationStartFrame:I

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationEndFrame:I

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationRepeatCount:I

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmUseCustomIconWithoutShadowBg(Landroid/service/controls/CustomControl;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmUseCustomIconWithoutPadding(Landroid/service/controls/CustomControl;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setUseCustomIconWithoutPadding(Z)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmLayoutType(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setLayoutType(I)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationJson(Landroid/service/controls/CustomControl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationJsonCache(Landroid/service/controls/CustomControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationStartFrame(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationEndFrame(Landroid/service/controls/CustomControl;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationRepeatCount(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setCustomIconAnimationRepeatCount(I)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmOverlayCustomIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->setOverlayCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatelessBuilder;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/service/controls/CustomControl;
    .locals 2

    new-instance v0, Landroid/service/controls/CustomControl;

    invoke-direct {v0}, Landroid/service/controls/CustomControl;-><init>()V

    iget-boolean v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mUseCustomIconWithoutShadowBg:Z

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmUseCustomIconWithoutShadowBg(Landroid/service/controls/CustomControl;Z)V

    iget-boolean v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mUseCustomIconWithoutPadding:Z

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmUseCustomIconWithoutPadding(Landroid/service/controls/CustomControl;Z)V

    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mLayoutType:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmLayoutType(Landroid/service/controls/CustomControl;I)V

    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationJson(Landroid/service/controls/CustomControl;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationJsonCache(Landroid/service/controls/CustomControl;Ljava/lang/String;)V

    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationStartFrame:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationStartFrame(Landroid/service/controls/CustomControl;I)V

    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationEndFrame:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationEndFrame(Landroid/service/controls/CustomControl;I)V

    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationRepeatCount:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationRepeatCount(Landroid/service/controls/CustomControl;I)V

    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmOverlayCustomIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V

    return-object v0
.end method

.method public blacklist setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCustomIconAnimationRepeatCount(I)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationRepeatCount:I

    return-object p0
.end method

.method public blacklist setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationStartFrame:I

    iput p2, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mCustomIconAnimationEndFrame:I

    return-object p0
.end method

.method public blacklist setLayoutType(I)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mLayoutType:I

    return-object p0
.end method

.method public blacklist setOverlayCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutPadding(Z)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mUseCustomIconWithoutPadding:Z

    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/CustomControl$CustomStatelessBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/controls/CustomControl$CustomStatelessBuilder;->mUseCustomIconWithoutShadowBg:Z

    return-object p0
.end method
