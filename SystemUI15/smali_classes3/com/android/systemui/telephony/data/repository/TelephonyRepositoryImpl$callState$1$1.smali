.class final Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $listener:Landroid/telephony/TelephonyCallback$CallStateListener;

.field final synthetic this$0:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->this$0:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->$listener:Landroid/telephony/TelephonyCallback$CallStateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->this$0:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->manager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object p0, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->$listener:Landroid/telephony/TelephonyCallback$CallStateListener;

    iget-object v1, v0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    iget-object v1, v1, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
