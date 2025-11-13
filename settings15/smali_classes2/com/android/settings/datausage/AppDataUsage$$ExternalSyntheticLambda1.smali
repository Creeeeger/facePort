.class public final synthetic Lcom/android/settings/datausage/AppDataUsage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/datausage/AppDataUsage;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    const/16 v0, 0x65

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    const/4 p0, 0x0

    return-object p0
.end method
