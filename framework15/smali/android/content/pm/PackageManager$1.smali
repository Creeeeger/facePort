.class Landroid/content/pm/PackageManager$1;
.super Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/PackageManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/PackageManager$1;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHiddenApiWhitelistedApps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInstallConstraintsAllowlist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageManager$1;->this$0:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
