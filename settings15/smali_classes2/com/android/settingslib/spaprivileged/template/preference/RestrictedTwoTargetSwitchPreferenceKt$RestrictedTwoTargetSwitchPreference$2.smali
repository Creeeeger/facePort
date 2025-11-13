.class final synthetic Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
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


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$2;

    invoke-direct {v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$2;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;)V"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;-><init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;)V

    return-object p0
.end method
