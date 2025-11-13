.class public final Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;->this$0:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;->this$0:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->discoverDevices()V

    return-void
.end method
