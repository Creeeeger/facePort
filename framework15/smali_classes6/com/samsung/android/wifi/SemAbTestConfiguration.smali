.class public Lcom/samsung/android/wifi/SemAbTestConfiguration;
.super Ljava/lang/Object;
.source "SemAbTestConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;,
        Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;,
        Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;,
        Lcom/samsung/android/wifi/SemAbTestConfiguration$AbTestGroupAllocation;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TESTGROUP_A:I = 0x0

.field public static final blacklist TESTGROUP_B:I = 0x1

.field public static final blacklist TESTGROUP_C:I = 0x2

.field public static final blacklist TESTGROUP_INVALID:I = -0x1


# instance fields
.field public blacklist abTestGroupAllocation:I

.field public blacklist endDate:Ljava/lang/String;

.field public blacklist id:Ljava/lang/String;

.field private blacklist mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

.field private blacklist mSalesModelAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSalesModelBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTestOutputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTestParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist moduleName:Ljava/lang/String;

.field public blacklist startDate:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmGroupSize(Lcom/samsung/android/wifi/SemAbTestConfiguration;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSalesModelAllowList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSalesModelBlockList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTestOutputList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTestParamList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadGroup(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->readGroup(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteGroup(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->writeGroup(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    iget v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    iput v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    const-string v0, "2024.03.01"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    const-string v0, "2024.12.31"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-void
.end method

.method private static blacklist readGroup(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;
    .locals 2

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist writeGroup(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->matches(Lcom/samsung/android/wifi/SemAbTestConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public blacklist getGroupSize()Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    return-object v0
.end method

.method public blacklist getMyOutputList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->isAbTestInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;

    iget-object v3, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public blacklist getMyTestParamsMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->isAbTestInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;

    iget v3, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    iget-object v4, v4, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    iget-object v4, v4, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    iget-object v4, v4, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public blacklist getSalesModelAllowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSalesModelBlockList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTestOutputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTestParamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isAbTestInProgress()Z
    .locals 5

    const-string v0, "99999999"

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist matches(Lcom/samsung/android/wifi/SemAbTestConfiguration;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist setGroupSize(Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    return-void
.end method

.method public blacklist setSalesModelAllowList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    return-void
.end method

.method public blacklist setSalesModelBlockList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    return-void
.end method

.method public blacklist setTestOutputList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    return-void
.end method

.method public blacklist setTestParamList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbTestConfiguration ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " moduleName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " endDate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    const-string v3, ", "

    const-string v4, "]"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " mSalesModelAllowList: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, " salesModelAllowList unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " mSalesModelBlockList: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v1, " mSalesModelBlockList unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, " abTestGroupAllocation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, " TestParamList: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const-string v1, " TestParamList unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GroupSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, " TestOutputList: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_7
    const-string v1, " TestOutputList unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelAllowList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mSalesModelBlockList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestParamList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mGroupSize:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-static {p1, v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->writeGroup(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->mTestOutputList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
