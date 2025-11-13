.class Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;
.super Ljava/lang/Object;
.source "PreloadedApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->collator:Ljava/text/Collator;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->this$0:Lcom/samsung/android/settings/deviceinfo/PreloadedApps;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->-$$Nest$fgetmPm(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 191
    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;->compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result p0

    return p0
.end method
