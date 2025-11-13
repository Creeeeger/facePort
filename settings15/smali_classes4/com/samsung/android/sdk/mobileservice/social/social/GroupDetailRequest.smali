.class public final Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppId:Ljava/lang/String;

.field public final mFeatureIdList:Ljava/util/List;

.field public final mGroupId:Ljava/lang/String;

.field public final mMaxGroupMemberCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4r5b3r1h6a"

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mAppId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mGroupId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    iget p1, p1, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mMaxGroupMemberCount:I

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mAppId:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mGroupId:Ljava/lang/String;

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mMaxGroupMemberCount:I

    if-eq v2, v1, :cond_0

    const-string v1, "max_group_member_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "space_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    const-string v1, ";"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "feature_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
