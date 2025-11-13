.class public final synthetic Lcom/android/settings/security/CredentialManagementAppAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :catch_1
    if-ne v2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    :goto_1
    return v1
.end method
