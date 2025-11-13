.class public final Lcom/android/settings/localepicker/LocaleListEditor$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleListEditor;->setEditMode$1(Z)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x158

    const/16 p1, 0x1f4d

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
