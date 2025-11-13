.class public Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
.super Ljava/lang/Object;
.source "GroupDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    }
.end annotation


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mFeatureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupId:Ljava/lang/String;

.field private final mMaxGroupMemberCount:I

.field private final mSpaceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$000(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mAppId:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$100(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mGroupId:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$200(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mSpaceName:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$300(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$400(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mMaxGroupMemberCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mAppId:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mGroupId:Ljava/lang/String;

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mMaxGroupMemberCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v2, "max_group_member_count"

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mSpaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mSpaceName:Ljava/lang/String;

    const-string/jumbo v2, "space_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    const-string v1, ";"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "feature_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
