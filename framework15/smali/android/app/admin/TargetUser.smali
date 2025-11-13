.class public final Landroid/app/admin/TargetUser;
.super Ljava/lang/Object;
.source "TargetUser.java"


# static fields
.field public static final whitelist GLOBAL:Landroid/app/admin/TargetUser;

.field public static final blacklist GLOBAL_USER_ID:I = -0x3

.field public static final whitelist LOCAL_USER:Landroid/app/admin/TargetUser;

.field public static final blacklist LOCAL_USER_ID:I = -0x1

.field public static final whitelist PARENT_USER:Landroid/app/admin/TargetUser;

.field public static final blacklist PARENT_USER_ID:I = -0x2

.field public static final whitelist UNKNOWN_USER:Landroid/app/admin/TargetUser;

.field public static final blacklist UNKNOWN_USER_ID:I = -0x3


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/app/admin/TargetUser;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->LOCAL_USER:Landroid/app/admin/TargetUser;

    new-instance v0, Landroid/app/admin/TargetUser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->PARENT_USER:Landroid/app/admin/TargetUser;

    new-instance v0, Landroid/app/admin/TargetUser;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->GLOBAL:Landroid/app/admin/TargetUser;

    new-instance v0, Landroid/app/admin/TargetUser;

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->UNKNOWN_USER:Landroid/app/admin/TargetUser;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/admin/TargetUser;->mUserId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/TargetUser;

    iget v3, p0, Landroid/app/admin/TargetUser;->mUserId:I

    iget v4, v2, Landroid/app/admin/TargetUser;->mUserId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/app/admin/TargetUser;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
