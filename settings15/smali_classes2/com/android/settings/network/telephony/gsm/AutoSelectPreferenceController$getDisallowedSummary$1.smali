.class final Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->getDisallowedSummary(Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->label:I

    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$getDisallowedSummary(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
