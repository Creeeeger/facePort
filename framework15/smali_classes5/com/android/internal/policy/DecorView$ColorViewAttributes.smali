.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final blacklist horizontalGravity:I

.field final blacklist id:I

.field final blacklist insetsType:I

.field final blacklist seascapeGravity:I

.field final blacklist transitionName:Ljava/lang/String;

.field final blacklist translucentFlag:I

.field final blacklist verticalGravity:I


# direct methods
.method private constructor blacklist <init>(IIIILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    iput-object p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public blacklist isPresent(ZIZ)Z
    .locals 1

    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVisible(IIIZ)Z
    .locals 3

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v2

    return v2
.end method

.method public blacklist isVisible(ZIIZ)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
