.class public final synthetic Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/service/ObservableServiceConnection$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/systemui/util/service/ObservableServiceConnection;->$r8$lambda$MK0N9YR-OlSEvsqj3MnT5S6smR8(Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
