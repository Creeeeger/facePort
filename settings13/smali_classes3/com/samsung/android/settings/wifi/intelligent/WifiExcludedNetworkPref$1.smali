.class Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;
.super Ljava/lang/Object;
.source "WifiExcludedNetworkPref.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

.field final synthetic val$networkId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

    iput p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->val$networkId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->val$networkId:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->-$$Nest$msetSkipInternetCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;IZ)V

    const/16 p0, 0xc30

    const/16 p1, 0xc36

    .line 71
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
