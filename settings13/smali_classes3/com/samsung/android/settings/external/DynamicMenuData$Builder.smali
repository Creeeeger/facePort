.class public Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
.super Ljava/lang/Object;
.source "DynamicMenuData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/external/DynamicMenuData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mIsSummaryPrimaryDark:Z

.field private mIsVisible:Z

.field private mKey:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryRes:I

.field private mTitle:Ljava/lang/String;

.field private mTitleRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsEnabled:Z

    .line 140
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitleRes:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummaryRes:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsSummaryPrimaryDark:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/external/DynamicMenuData;-><init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;Lcom/samsung/android/settings/external/DynamicMenuData$1;)V

    return-object v0

    .line 200
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;

    const-string v0, "Key cannot be empty"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setChecked(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsChecked:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method
