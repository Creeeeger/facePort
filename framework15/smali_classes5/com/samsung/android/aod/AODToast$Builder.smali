.class public Lcom/samsung/android/aod/AODToast$Builder;
.super Ljava/lang/Object;
.source "AODToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDuration:I

.field private blacklist mDurationMillis:J

.field private blacklist mGravity:I

.field private blacklist mHorizontalMargin:F

.field private final blacklist mText:Ljava/lang/String;

.field private blacklist mVerticalMargin:F

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDurationMillis(Lcom/samsung/android/aod/AODToast$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGravity(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHorizontalMargin(Lcom/samsung/android/aod/AODToast$Builder;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mHorizontalMargin:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Lcom/samsung/android/aod/AODToast$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalMargin(Lcom/samsung/android/aod/AODToast$Builder;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mVerticalMargin:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmX(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmY(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mY:I

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/aod/AODToast;
    .locals 2

    new-instance v0, Lcom/samsung/android/aod/AODToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/aod/AODToast;-><init>(Lcom/samsung/android/aod/AODToast$Builder;Lcom/samsung/android/aod/AODToast-IA;)V

    return-object v0
.end method

.method public blacklist setDuration(I)Lcom/samsung/android/aod/AODToast$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDuration:I

    return-object p0
.end method

.method public blacklist setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDurationMillis:J

    return-object p0
.end method

.method public blacklist setGravity(III)Lcom/samsung/android/aod/AODToast$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mGravity:I

    iput p2, p0, Lcom/samsung/android/aod/AODToast$Builder;->mX:I

    iput p3, p0, Lcom/samsung/android/aod/AODToast$Builder;->mY:I

    return-object p0
.end method

.method public blacklist setMargin(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mHorizontalMargin:F

    iput p2, p0, Lcom/samsung/android/aod/AODToast$Builder;->mVerticalMargin:F

    return-void
.end method
