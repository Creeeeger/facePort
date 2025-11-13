.class public abstract Lcom/samsung/android/camera/filter/SemFilter;
.super Ljava/lang/Object;
.source "SemFilter.java"


# static fields
.field public static final whitelist FILTER_CATEGORY_REAR:I = 0x0

.field public static final whitelist FILTER_CATEGORY_REAR_AND_SELFIE:I = 0x2

.field public static final whitelist FILTER_CATEGORY_SELFIE:I = 0x1

.field public static final blacklist TYPE_EFFECT_COLOR_EFFECT:I = -0x1


# instance fields
.field private blacklist mCategory:I

.field private blacklist mFilterName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mVendor:Ljava/lang/String;

.field private blacklist mVersion:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mFilterName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVendor:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mCategory:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVersion:I

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilter;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilter;->mFilterName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/camera/filter/SemFilter;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVendor:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/camera/filter/SemFilter;->mCategory:I

    iput p6, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVersion:I

    return-void
.end method


# virtual methods
.method public whitelist getCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mCategory:I

    return v0
.end method

.method public whitelist getFilterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVersion:I

    return v0
.end method
