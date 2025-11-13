.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/SupplicantState;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/SupplicantState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/SupplicantState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/SupplicantState;

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->$r8$lambda$KNSf9PcQVkZOaMldvYVi-mt4Ogk(Landroid/net/wifi/SupplicantState;Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;)Z

    move-result p0

    return p0
.end method
