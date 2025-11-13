.class Lcom/samsung/android/settings/as/vibration/VibUri$1;
.super Ljava/util/HashMap;
.source "VibUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/settings/as/vibration/VibUri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, -0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibUri;->TABLE_PATH:Lcom/samsung/android/settings/as/vibration/VibUri;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibUri;->RINGTONE_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibUri;->RINGTONE_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibUri;->NOTIFICATION_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
