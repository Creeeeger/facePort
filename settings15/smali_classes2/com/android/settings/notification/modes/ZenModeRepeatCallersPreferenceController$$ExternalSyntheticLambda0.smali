.class public final synthetic Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    return-object p0
.end method
