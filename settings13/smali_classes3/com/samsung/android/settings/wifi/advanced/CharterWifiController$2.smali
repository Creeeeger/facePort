.class Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;
.super Landroid/content/AsyncQueryHandler;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->callContentProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Landroid/content/ContentResolver;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    const-string p1, "CharterWifiController"

    if-eqz p3, :cond_4

    .line 194
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    invoke-static {}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$CHA_RESULT;->values()[Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$CHA_RESULT;

    move-result-object p2

    const-string v1, "status"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aget-object p2, p2, v1

    .line 203
    sget-object v1, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$3;->$SwitchMap$com$samsung$android$settings$wifi$advanced$CharterWifiController$CHA_RESULT:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Error..."

    .line 215
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-static {p2, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$menableCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$msetCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V

    const-string p0, "Connection service is started..."

    .line 212
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-static {p2, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$menableCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$msetCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V

    const-string p0, "Connection service is stopped..."

    .line 207
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_4
    :goto_1
    const-string p0, "Error in starting connection Service!"

    .line 195
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    .line 197
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method
