.class final synthetic Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;

    invoke-direct {v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;-><init>()V

    sput-object v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;->INSTANCE:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$faceOrFingerprintOrTrustEnabled$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lkotlin/Triple;

    const-string v4, "<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V"

    const/4 v5, 0x4

    const/4 v1, 0x4

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p4, Lkotlin/coroutines/Continuation;

    sget p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->$r8$clinit:I

    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, p1, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
