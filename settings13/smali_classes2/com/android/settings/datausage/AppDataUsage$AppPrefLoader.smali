.class Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPrefLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 4

    const/4 v0, 0x0

    .line 1134
    aget-object p1, p1, v0

    .line 1136
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmPackageManager(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1137
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->access$100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1138
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->access$200(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmPackageManager(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->resizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmPackageManager(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1131
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->doInBackground([Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppList(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppList(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1131
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->onPostExecute(Landroidx/preference/Preference;)V

    return-void
.end method
