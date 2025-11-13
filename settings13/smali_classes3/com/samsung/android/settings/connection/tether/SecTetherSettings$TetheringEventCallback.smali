.class final Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;
.super Ljava/lang/Object;
.source "SecTetherSettings.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TetheringEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    return-void
.end method


# virtual methods
.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTetheredInterfacesChanged() interfaces : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->-$$Nest$mupdateState(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    return-void
.end method
