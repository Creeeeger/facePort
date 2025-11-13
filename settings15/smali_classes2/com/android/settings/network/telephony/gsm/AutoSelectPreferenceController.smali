.class public final Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.super Lcom/android/settings/spa/preference/ComposePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 A2\u00020\u0001:\u0002ABBg\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u001a\u0008\u0002\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006\u0012\u001a\u0008\u0002\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00080\u0006\u0012\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0017\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0018\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u001e\u0010)\u001a\u00020\u00162\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020$0\'H\u0082@\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010,\u001a\u00020\u00162\u0006\u0010+\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00080\u0010/R&\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u00101R&\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u00101R \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00101R\u0016\u00103\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u001d058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R*\u00109\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u00089\u0010:\u0012\u0004\u0008?\u0010/\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0016\u0010\u0011\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010@\u00a8\u0006D\u00b2\u0006\u000e\u0010+\u001a\u0004\u0018\u00010$8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010C\u001a\u00020\u00048\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;",
        "Lcom/android/settings/spa/preference/ComposePreferenceController;",
        "Landroid/content/Context;",
        "context",
        "",
        "key",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "allowedNetworkTypesFlowFactory",
        "Landroid/telephony/ServiceState;",
        "serviceStateFlowFactory",
        "Landroid/os/PersistableBundle;",
        "getConfigForSubId",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "subId",
        "init",
        "(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;",
        "getAvailabilityStatus",
        "()I",
        "",
        "Content",
        "(Landroidx/compose/runtime/Composer;I)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "viewLifecycleOwner",
        "onViewCreated",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;",
        "listener",
        "addListener",
        "(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;",
        "serviceState",
        "getDisallowedSummary",
        "(Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "onlyAutoSelectInHome",
        "()Z",
        "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;",
        "overrideChannel",
        "setAutomaticSelectionMode",
        "(Lcom/android/settingslib/spa/framework/compose/OverridableFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isAuto",
        "updateListenerValue",
        "(Z)V",
        "showAutoSelectProgressBar",
        "()V",
        "dismissProgressBar",
        "Lkotlin/jvm/functions/Function1;",
        "Landroid/telephony/TelephonyManager;",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "",
        "listeners",
        "Ljava/util/List;",
        "Landroid/app/ProgressDialog;",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "getProgressDialog",
        "()Landroid/app/ProgressDialog;",
        "setProgressDialog",
        "(Landroid/app/ProgressDialog;)V",
        "getProgressDialog$annotations",
        "I",
        "Companion",
        "OnNetworkSelectModeListener",
        "disallowedSummary",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field public static final Companion:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Companion;

.field private static final MINIMUM_DIALOG_TIME:J


# instance fields
.field private final allowedNetworkTypesFlowFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final getConfigForSubId:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final serviceStateFlowFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private subId:I

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->Companion:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Companion;

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    const/4 v0, 0x1

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedNetworkTypesFlowFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedNetworkTypesFlowFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceStateFlowFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedNetworkTypesFlowFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceStateFlowFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getConfigForSubId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/spa/preference/ComposePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->allowedNetworkTypesFlowFactory:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->serviceStateFlowFactory:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->getConfigForSubId:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->listeners:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$1;

    const-string v6, "allowedNetworkTypesFlow(Landroid/content/Context;I)Lkotlinx/coroutines/flow/Flow;"

    const/4 v7, 0x1

    const/4 v2, 0x1

    const-class v4, Lcom/android/settings/network/telephony/AllowedNetworkTypesFlowKt;

    const-string v5, "allowedNetworkTypesFlow"

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    :goto_0
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;

    const-string v6, "serviceStateFlow(Landroid/content/Context;I)Lkotlinx/coroutines/flow/Flow;"

    const/4 v7, 0x1

    const/4 v2, 0x1

    const-class v4, Lcom/android/settings/network/telephony/ServiceStateFlowKt;

    const-string v5, "serviceStateFlow"

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p4

    :goto_1
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;

    move-object v1, p1

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    goto :goto_2

    :cond_2
    move-object v1, p1

    move-object/from16 v13, p5

    :goto_2
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final Content$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final Content$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final synthetic Content$updateListenerValue(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->Content$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->Content$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Content$updateListenerValue(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->Content$updateListenerValue(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDisallowedSummary(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->getDisallowedSummary(Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s-1317457118(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMINIMUM_DIALOG_TIME$cp()J
    .locals 2

    sget-wide v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME:J

    return-wide v0
.end method

.method public static final synthetic access$getPreference(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Lcom/android/settings/spa/preference/ComposePreference;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getPreference()Lcom/android/settings/spa/preference/ComposePreference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSubId$p(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    return p0
.end method

.method public static final synthetic access$getTelephonyManager$p(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static final synthetic access$onlyAutoSelectInHome(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->onlyAutoSelectInHome()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAutomaticSelectionMode(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/android/settingslib/spa/framework/compose/OverridableFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->setAutomaticSelectionMode(Lcom/android/settingslib/spa/framework/compose/OverridableFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final dismissProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final getDisallowedSummary(Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ServiceState;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;

    iget v1, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$2;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Landroid/telephony/ServiceState;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$getDisallowedSummary$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "withContext(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic getProgressDialog$annotations()V
    .locals 0

    return-void
.end method

.method private final onlyAutoSelectInHome()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->getConfigForSubId:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    const-string v0, "only_auto_select_in_home_network"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final setAutomaticSelectionMode(Lcom/android/settingslib/spa/framework/compose/OverridableFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/framework/compose/OverridableFlow;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;

    iget v1, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    iget-object p0, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->showAutoSelectProgressBar()V

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$2;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$setAutomaticSelectionMode$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->overrideChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->dismissProgressBar()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showAutoSelectProgressBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141e5f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method private final updateListenerValue(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;->onNetworkSelectModeUpdated(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x50c3de73

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_0
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v9, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v0, -0x60415447

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v10, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, v7, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->serviceStateFlowFactory:Lkotlin/jvm/functions/Function1;

    iget v2, v7, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    invoke-static {v0, v9, v2, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x6041537c

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$lambda$2$$inlined$map$1;

    invoke-direct {v1, v11}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$lambda$2$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-direct {v0, v1}, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v13, v0

    check-cast v13, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v14, v13, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->flow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance v15, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$isAuto$2;

    const-string v5, "updateListenerValue(Z)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const-string v4, "updateListenerValue"

    move-object v0, v15

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v10, v8, v1}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$$inlined$map$1;

    invoke-direct {v0, v11, v7}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    const-string v2, ""

    invoke-static {v0, v2, v8, v1}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    new-instance v10, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1;

    move-object v4, v9

    check-cast v4, Lkotlinx/coroutines/internal/ContextScope;

    move-object v0, v10

    move-object v1, v8

    move-object/from16 v5, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$1;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/android/settingslib/spa/framework/compose/OverridableFlow;)V

    invoke-static {v10, v8, v12}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$2;

    move/from16 v2, p2

    invoke-direct {v1, v7, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$Content$2;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public final addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getProgressDialog()Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public final init(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 2

    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const-string v0, "createForSubscriptionId(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/spa/preference/ComposePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->allowedNetworkTypesFlowFactory:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->subId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public final setProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/spa/preference/ComposePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
