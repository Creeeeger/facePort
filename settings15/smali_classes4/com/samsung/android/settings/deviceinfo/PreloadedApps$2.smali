.class public final Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final collator:Ljava/text/Collator;

.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->collator:Ljava/text/Collator;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
