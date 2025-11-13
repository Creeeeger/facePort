.class final Lcom/android/settings/network/telephony/WifiCallingPreferenceController$resourcesForSub$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/WifiCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/res/Resources;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$resourcesForSub$2;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$resourcesForSub$2;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$getMContext$p$s1290605894(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$resourcesForSub$2;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
