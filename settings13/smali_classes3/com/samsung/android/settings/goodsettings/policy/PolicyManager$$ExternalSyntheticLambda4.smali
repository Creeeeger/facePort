.class public final synthetic Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->$r8$lambda$5t7DpBTJ2CUT7jjBdngp7TimfLc(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method
