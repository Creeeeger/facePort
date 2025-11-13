.class Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;
.super Ljava/lang/Object;
.source "WifiApPreferenceWith2Buttons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->-$$Nest$fgetmClickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->-$$Nest$fgetmInvitationConfig(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;->onSecondButtonClicked(Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second button clicked for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
