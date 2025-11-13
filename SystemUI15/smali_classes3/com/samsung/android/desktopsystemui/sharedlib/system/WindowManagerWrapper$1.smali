.class Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;

.field final synthetic val$receiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;->val$receiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo p1, "shortcuts_array"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;->val$receiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    return-void
.end method
