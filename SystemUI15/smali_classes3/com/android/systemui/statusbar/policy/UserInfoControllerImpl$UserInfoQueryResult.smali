.class public final Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAvatar:Landroid/graphics/drawable/Drawable;

.field public final mName:Ljava/lang/String;

.field public final mUserAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mAvatar:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mUserAccount:Ljava/lang/String;

    return-void
.end method
