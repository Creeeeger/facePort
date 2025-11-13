.class public final Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mFeatureIdList:Ljava/util/List;

.field public final mGroupId:Ljava/lang/String;

.field public mMaxGroupMemberCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    return-void
.end method
