.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;


# virtual methods
.method public abstract getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
.end method

.method public abstract getConstructors()Ljava/util/Collection;
.end method

.method public abstract getContextReceivers()Ljava/util/List;
.end method

.method public abstract getDeclaredTypeParameters()Ljava/util/List;
.end method

.method public abstract getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
.end method

.method public abstract getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
.end method

.method public abstract getSealedSubclasses()Ljava/util/Collection;
.end method

.method public abstract getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
.end method

.method public abstract getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;
.end method

.method public abstract getValueClassRepresentation()Lkotlin/reflect/jvm/internal/impl/descriptors/ValueClassRepresentation;
.end method

.method public abstract getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.end method

.method public abstract isCompanionObject()Z
.end method

.method public abstract isData()Z
.end method

.method public abstract isFun()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isValue()Z
.end method
