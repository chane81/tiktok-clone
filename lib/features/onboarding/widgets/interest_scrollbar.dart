import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/onboarding/widgets/interest_button.dart';
import '../../../constants/gaps.dart';
import '../../../constants/sizes.dart';

class InterestScrollbar extends StatelessWidget {
  const InterestScrollbar({
    super.key,
    required ScrollController scrollController,
    required List<String> interests,
  })  : _scrollController = scrollController,
        _interests = interests;

  final ScrollController _scrollController;
  final List<String> _interests;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.only(
          left: Sizes.size24,
          right: Sizes.size24,
          bottom: Sizes.size16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v32,
            const Text(
              'Choose your interests',
              style: TextStyle(
                fontSize: Sizes.size40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gaps.v20,
            const Text(
              'Get better video recommendations',
              style: TextStyle(
                fontSize: Sizes.size20,
                color: Colors.black87,
              ),
            ),
            Gaps.v64,
            Wrap(
              runSpacing: 15,
              spacing: 15,
              children: [
                for (var item in _interests) InterestButton(interest: item),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
