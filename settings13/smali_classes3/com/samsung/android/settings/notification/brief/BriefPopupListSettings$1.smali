.class Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;
.super Ljava/lang/Object;
.source "BriefPopupListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;)I
    .locals 2

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPriority()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPriority()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPriority()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, p1

    return p0

    :catch_0
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to compare AppInfo. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BriefPopupListSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 141
    check-cast p1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    check-cast p2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;->compare(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;)I

    move-result p0

    return p0
.end method
