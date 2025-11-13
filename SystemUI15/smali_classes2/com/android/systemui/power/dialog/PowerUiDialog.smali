.class public abstract Lcom/android/systemui/power/dialog/PowerUiDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDoNotShowTag:Ljava/lang/String;

.field public mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract checkCondition()Z
.end method

.method public abstract getDialog()Landroidx/appcompat/app/AlertDialog;
.end method

.method public abstract setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V
.end method
