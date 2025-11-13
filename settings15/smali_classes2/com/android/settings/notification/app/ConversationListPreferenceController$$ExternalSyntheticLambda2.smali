.class public final synthetic Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object p0, v0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method
