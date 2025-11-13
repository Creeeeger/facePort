.class public final Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $appItem:Lcom/android/settingslib/AppItem;

.field public final synthetic $endTime:J

.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageListAppsController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageListAppsController;Lcom/android/settingslib/AppItem;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;->$appItem:Lcom/android/settingslib/AppItem;

    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;->$endTime:J

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;->$appItem:Lcom/android/settingslib/AppItem;

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;->$endTime:J

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageListAppsController;->startAppDataUsage(Lcom/android/settingslib/AppItem;J)V

    const/4 p0, 0x1

    return p0
.end method
