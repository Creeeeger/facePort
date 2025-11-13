.class public final Landroid/content/pm/PackageInstaller$UnarchivalState;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnarchivalState"
.end annotation


# instance fields
.field private final blacklist mRequiredStorageBytes:J

.field private final blacklist mStatus:I

.field private final blacklist mUnarchiveId:I

.field private final blacklist mUserActionIntent:Landroid/app/PendingIntent;


# direct methods
.method private constructor blacklist <init>(IIJLandroid/app/PendingIntent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUnarchiveId:I

    iput p2, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mStatus:I

    const-class v0, Landroid/content/pm/PackageInstaller$UnarchivalStatus;

    const/4 v1, 0x0

    iget v2, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mStatus:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide p3, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mRequiredStorageBytes:J

    iput-object p5, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUserActionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static whitelist createGenericErrorState(I)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .locals 7

    new-instance v6, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/16 v2, 0x64

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static whitelist createInsufficientStorageState(IJLandroid/app/PendingIntent;)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .locals 7

    new-instance v6, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const/4 v2, 0x2

    move-object v0, v6

    move v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static whitelist createNoConnectivityState(I)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .locals 7

    new-instance v6, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static whitelist createOkState(I)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .locals 7

    new-instance v6, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static whitelist createUserActionRequiredState(ILandroid/app/PendingIntent;)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    move-object v0, v6

    move v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v6
.end method


# virtual methods
.method blacklist getRequiredStorageBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mRequiredStorageBytes:J

    return-wide v0
.end method

.method blacklist getStatus()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mStatus:I

    return v0
.end method

.method blacklist getUnarchiveId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUnarchiveId:I

    return v0
.end method

.method blacklist getUserActionIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUserActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
