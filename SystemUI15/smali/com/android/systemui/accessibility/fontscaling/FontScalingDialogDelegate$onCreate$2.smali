.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
