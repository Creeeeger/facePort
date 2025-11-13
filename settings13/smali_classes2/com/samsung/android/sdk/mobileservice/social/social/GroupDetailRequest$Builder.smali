.class public Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
.super Ljava/lang/Object;
.source "GroupDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private mFeatureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupId:Ljava/lang/String;

.field private mMaxGroupMemberCount:I

.field private mSpaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mSpaceName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mSpaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$1;)V

    return-object v0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "GroupId should not be empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "AppId should not be empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFeatureId(Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method public setMaxGroupMemberCount(I)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0

    .line 133
    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    return-object p0
.end method
