.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;
.super Ljava/lang/Object;
.source "MobileWIPSExceptionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 286
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mac_addr=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allow list delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MobileWIPSExceptionList"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$sfgetexceptionUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$fgetmExceptionList(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)Landroidx/preference/PreferenceGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->access$000(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete & removePreference "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "WIFI_205"

    const-string p1, "1344"

    .line 296
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
