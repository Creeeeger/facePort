.class public final Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

.field public static final INSTANCE$1:Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;->INSTANCE:Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;->INSTANCE$1:Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->checkedValue:Z

    return-void

    :pswitch_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->checkedValue:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
